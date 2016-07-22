class Context
  attr_accessor :user, :current_recipe

  def initialize
    @user = OpenStruct.new(id: 1, name: 'Aki')
    @current_recipe = OpenStruct.new(
      id: 282530,
      title: 'Roasted Garlic Baba Ganoush',
      ingredients: [
        'large or 3 small eggplants 1',
        'garlic 3-4 cloves',
        'olive oil 1 Tbsp',
        'Tahini to taste 2-4 Tbsp',
        'small lemon or 1 lime 1',
        'ground cumin 1/4 tsp',
        'salt to taste',
        'Cayenne pepper or paprika to garnish',
        'Optional- fresh parsley, cilantro, or basil to garnish'
      ],
      steps: [
        {number: 1, text: "If you have a big eggplant, cut it in half lengthwise. Leave thinner/smaller eggplants whole. Poke with a knife or fork in several places."},
        {number: 2, text: "Put 3-4 garlic cloves, unpeeled, inside of a small pieces of aluminum foil and pour in a glug (1 Tbsp-ish) of olive oil along with it. Close foil around garlic (make sure oil won't leak out)."},
        {number: 3, text: "Lay eggplant(s) on a pan (skin-side up if you cut them) along with garlic. I brushed it with just a little olive oil to keep it from drying out. Broil, grill, or roast for about 40-50 minutes (My oven was set to broil at 500°F/260°C.) If baking in oven, bake 40-60 min. at 400°F/200°C, skin side up."},
        {number: 4, text: "Remove garlic after 20-25 minutes so it doesn't burn. The cloves should be soft inside their skins. Cook the eggplants for the remaining time until skin is starting to blacken and flesh is very soft."},
        {number: 5, text: "When they're soft enough, remove eggplants and let cool until you can touch them. Scoop out flesh away from skin and put into a large bowl. Mash with fork."},
        {number: 6, text: "Squeeze or scoop out roasted garlic cloves from their skins and mash into eggplant. If you end up burning one or two like me, you can finely chop a fresh garlic clove to replaces it ;) It'll look a little gross at first, but once everything is mixed, it'll be okay, hehe."},
        {number: 7, text: "Add 2-4 Tbsp of tahini (depending how much sesame taste you like) and 1/4 tsp ground cumin. Mix well. Squeeze lemon or lime and add 2-3 Tablespoons, mix and taste. Add more for more tartness. (I used a whole lime, about 4 Tbsp). Last, mix in salt until it tastes good too you :)"},
        {number: 8, text: "Garnish with a dash of cayenne or paprika for color or spice, and some chopped herbs like parsley, basil, cilantro, etc. Enjoy as a dip or sandwich spread!"},
      ]
    )
  end
end
