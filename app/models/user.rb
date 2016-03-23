require 'json'

class User
  attr_accessor :first_name, :last_name, :age, :id

  def initialize()

  end

  def all
    the_list = []
    USERS_LIST.each do |x|
      the_list << "Name: #{x[:first_name]} #{x[:last_name]}   Age: #{x[:age]}"
    end
    return the_list.to_json
  end

  def show(target)
    # want = target[:params]
    # wanted = want[:id].to_i
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
