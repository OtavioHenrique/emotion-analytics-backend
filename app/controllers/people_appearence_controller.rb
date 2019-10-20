class PeopleAppearenceController < ApplicationController
  def create
    new_record = PeopleAppearence.create(
      age: params['age'],
      gender: params['gender'],
      glasses: params['glasses']
    )

    render json: new_record, status: 201
  end 

  def show
    people_appearence = PeopleAppearence.find params['id']

    render json: people_appearence
  end

  def index
    all_people_appearence = PeopleAppearence.all

    render json: all_people_appearence
  end

  def update
    record = PeopleAppearence.find params['id']

    record.age = params['age'] || record.age
    record.gender = params['gender'] || record.gender
    record.glasses = params['glasses'] || record..glasses

    record.save

    render json: record
  end
end
