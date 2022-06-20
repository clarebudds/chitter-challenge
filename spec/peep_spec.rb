require 'peep'

describe Peep do
  describe '.all' do
    connection = PG.connect(dbname: 'chitter_test')

    connection.exec("INSERT INTO peeps (peep) VALUES('peep one');")
    connection.exec("INSERT INTO peeps (peep) VALUES('peep two');")
    connection.exec("INSERT INTO peeps (peep) VALUES('peep three');")

    it 'contains all the peeps' do
      expect(Peep.all).to include 'peep one'
      expect(Peep.all).to include 'peep two'
      expect(Peep.all).to include 'peep three'
    end
  end

  describe '.add' do
    it 'adds a peep' do
      Peep.add('Adding a peep')
      expect(Peep.all).to include 'Adding a peep'
    end
  end

end 