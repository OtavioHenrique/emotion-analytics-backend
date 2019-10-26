class AddPeopleAppearanceToOccurrence < ActiveRecord::Migration[5.2]
  def change
    add_reference :occurrences, :people_appearances
  end
end
