migration 2, :create_phrases do
  up do
    create_table :phrases do
      column :id, Integer, :serial => true
      column :content, Text
    end
  end

  down do
    drop_table :phrases
  end
end
