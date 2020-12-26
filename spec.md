# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [x] Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes): a pirate has_many :maps, buried_treasure has_many :maps
- [x] Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User): map belongs_to :pirate, map belongs_to :buried_treasure
- [x] Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients): pirate has_many :buried_treasures, through: :maps, buried_treasure has_many :pirates, through: :maps
- [X] Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients): pirate has_many :buried_treasures, through: :maps, buried_treasure has_many :pirates, through: :maps
- [x] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity): Pirates can submit a secret hiding place for their map
- [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item): pirates and maps must have a unique name
- [ ] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
- [x] Include signup (how e.g. Devise): pirates#new
- [x] Include login (how e.g. Devise): session#new
- [x] Include logout (how e.g. Devise): session#destroy
- [x] Include third party signup/login (how e.g. Devise/OmniAuth): OmniAuth - github
- [x] Include nested resource show or index (URL e.g. users/2/recipes): buried_treasures/2/maps/2 (nested show route for maps)
- [x] Include nested resource "new" form (URL e.g. recipes/1/ingredients/new): adding a new buried_treasure is nested into the Pirate signup 
- [x] Include form display of validation errors (form URL e.g. /recipes/new): layouts folder includes partial for form errors

Confirm:
- [x] The application is pretty DRY - attempted to repeat myself as little as possible
- [x] Limited logic in controllers - used as little logic as possible
- [ ] Views use helper methods if appropriate
- [x] Views use partials if appropriate - only use partials when new and edit are used
