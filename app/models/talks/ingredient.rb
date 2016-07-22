class Talks::Ingredient
  attr_accessor :context, :message_text

  def initialize(context: nil)
    @context = context
  end

  def collection
    @message_text = @context.current_recipe.ingredients.join(', ')
    self
  end

  def amount(name: nil)
    @message_text = @context.current_recipe.ingredients.detect do |ingredient|
      ingredient.downcase.include?(name.downcase)
    end

    @message_text ||= "Hmm, Sorry, Not found #{name}."

    self
  end

  def response_message
    ResponseMessage.new(text: @message_text)
  end
end

