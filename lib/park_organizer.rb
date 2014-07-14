class ParkOrganizer

  def initialize (parks)
    @parks = parks
  end



  def sort_by_id
    sorted_parks = {}
    @parks.each do |park|
    sorted_parks[park[:id]] = park
    end
    sorted_parks
  end

  def sort_by_country
    sorted_parks = {}
    @parks.each do |park|
      sorted_parks[park[:country]] = [park]
    end
    sorted_parks.sort.flatten
  end

end