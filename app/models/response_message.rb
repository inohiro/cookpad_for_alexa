class ResponseMessage
  attr_accessor :text, :need_keep_session
  
  def initialize(text: nil, need_keep_session: false)
    @text = text
    @need_keep_session = need_keep_session
  end

  def to_alexa_scheme_format
    {
      outputSpeech: {
        type: 'PlainText',
        text: @text,
      },
      card: {
        type:    'Simple',
        title:   'Cookpad talk',
        content: "#{@text}",
      },
      reprompt: {
        outputSpeech: {
          type: 'PlainText',
          text: @text,
        },
      },
      shouldEndSession: !@need_keep_session,
    } 
  end
end
