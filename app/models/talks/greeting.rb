class Talks::Greeting
  attr_accessor :context, :message_text

  def initialize(context: nil)
    @context = context
  end

  def welcome
    @message_text = "Hi, #{@context.user.name}. Are you cooking recipe #{@context.current_recipe.title}?"
    self
  end

  def help
    @message_text = 'You can ask me, ingredient, amount, step'
    self
  end

  def stop
    @message_text = 'OK, goodbye'
    self
  end

  def response_message
    ResponseMessage.new(text: @message_text)
  end
end
