## MODELS:

### _USER_
* has_many :weeks <BR>
* has_many :days, through: :weeks
* has_many :meals, through: :days

    #### Attrubutes: 
    * name:
    * username:
    * password

### _WEEK_

* belongs_to :user
* has_many :days
* has_many :meals, through: :days

    #### Attrubutes: 
    * notes:
   

### _DAY_

* belongs_to :week
* has_many :meals
* has_many :foods, through: :meals

    #### Attrubutes: 
    * date: date
    * meal_type: string
   

### _MEAL_

* belongs_to :day
* has_many :foods


    #### Attrubutes: 
    
    * meal_type: string

### _FOOD_

* belongs_to :meal

    #### Attrubutes: 
    * name: name
    * meal_type: string


