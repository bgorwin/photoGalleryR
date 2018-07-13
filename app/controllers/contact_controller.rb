class ContactController < ApplicationController
  def show
    render template: "contact/#{params[:contact]}"
  end
end
