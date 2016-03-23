class UsersController < ApplicationController

  def initialize(target)
    @target = target
  end
  def index
    render User.new.all
    # Use the render method now to specify what should be rendered to the screen
    # this 'render' method fills the request object.
    # By default, all render calls will make the status "200 OK", you only need
    # to add a status if you are changing from "200 OK" to something else.
  end

  def show
    data = @target[:params]
    datum = data[:id].to_i
    if datum - 1 < USERS_LIST.length
      render User.new.show(@target)
    else
      render User.new.not_found, status: "404 NOT FOUND"
    end
  end
end
