class RegistrationController < ApplicationController
  def index

  end

  def register
    user = Register.new(params[:FullName], params[:address], params[:city], params[:state], params[:postal], params[:country], params[:email], params[:user], params[:password])
    session[:register] = user.to_yaml
    redirect_to '/registration/confirmation'
  end

  def confirmation
    @user = YAML.load(session[:register])
  end

end
