class LandingController < ApplicationController

  def index
		@tasks = Land.all
    @user = User.new
    @title = "Sign up"
  end

  def new
    @user = User.new
    @title = "Sign up"
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to @user
    else
      @title = "Sign up"
      render 'new'
    end
  end

  def show
    respond_to do |format|
      format.html do
        @content = Content.last
      end

      format.js do
        render js: "window.location.href = '#{profile_path(auth_token: current_user.auth_token)}'"
      end
    end
  end

  def facebook_share
    respond_to do |format|
      format.json do
        Group.new(current_user).add_facebook_share
        send_social_share_email('Facebook')
        render json: { message: 'Thanks! Your points have been credited.' }
      end
    end
  end

  def twitter_tweet
    respond_to do |format|
      format.json do
        Group.new(current_user).add_twitter_share
        send_social_share_email('Twitter')
        render json: { message: 'Thanks! Your points have been credited.' }
      end
    end
  end

  def forgotten_profile
    respond_to do |format|
      format.js do
        user = User.find_by_email(profile_params[:email])

        if user && response = user.send_welcome_email
          render js: '$(".response").html("We\'ve resent your welcome email");$(".response").addClass("success")'
        else
          render js: "$('.response').html('There was a problem sending the email, please try again later');$('.response').addClass('error')"
        end
      end
    end
  end

private

  def send_social_share_email(medium)
    mandrill = Mandrill::API.new
    rendered = mandrill.templates.render 'Boarding Group 3',
      [],
      [
        {name: 'user_name', content: current_user.first_name },
        {name: 'people_ahead', content: Group.rank(current_user) },
        {name: 'profile_url', content: profile_url(auth_token: current_user.auth_token) }
      ]

    message = {
      subject: "Thanks for sharing on #{medium}.",
      to: [{ email: current_user.email }],
      from_email: 'support@trackr-launch.herokuapp.com',
      from_name: 'Support TrackrLaunch',
      html: rendered['html']
    }

    mandrill.messages.send(message)
  end

  def profile_params
    params.permit(:email)
  end
end