class LocomotiveEngineer
  def self.generate_list_of_wagons(*ids)
    ids
  end

  def self.fix_list_of_wagons(each_wagons_id, missing_wagons)
    first, second, *rest = each_wagons_id
    each_wagons_id = [*rest, first, second]
    id_index = each_wagons_id.index(1)
    each_wagons_id.insert(id_index + 1, *missing_wagons)
  end

  def self.add_missing_stops(route, **stops)
    {
      from: route[:from],
      to: route[:to],
      stops: stops.values
    }
  end

  def self.extend_route_information(route, more_route_information)
    {**route, **more_route_information}
  end
end
