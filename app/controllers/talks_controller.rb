class TalksController < ActionController::API
  def create
    talk = talk_with_alexa(context: Context.new, alexa_request_params: params[:request])

    render json: talk.response_message.to_alexa_scheme_format
  end

  def talk_with_alexa(context: nil, alexa_request_params: nil)
    case alexa_request_params[:type]
    when 'LaunchRequest'
      Talks::Greeting.new(context: context).welcome
    when 'IntentRequest'
      case alexa_request_params[:intent][:name]
      when 'AMAZON.HelpIntent'
        Talks::Greeting.new(context: context).help
      when 'AMAZON.StopIntent'
        Talks::Greeting.new(context: context).stop
      when 'ingredient_collection'
        Talks::Ingredient.new(context: context).collection
      when 'ingredient_amount'
        Talks::Ingredient.new(context: context).amount(name: alexa_request_params[:intent][:slots][:ingredient][:value])
      else
        Talks::Greeting.new(context: context).help
      end
    else
      Talks::Greeting.new(context: context).help
    end
  end
end
