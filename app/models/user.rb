require 'json'

class User
  attr_accessor :first_name, :last_name, :age, :id

  def initialize()

  end

  def all
    USERS_LIST.to_json
  end

  def show(target)
    user = USERS_LIST[target[:params][:id].to_i-1]
    return user.to_json
  end

  def not_found
    return "Not Found".to_json
  end

  def as_json
    {
      first_name: @first_name,
      last_name: @last_name,
      age: @age,
      id:  @id
    }.to_json
  end

end
