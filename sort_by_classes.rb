classes = ["社長","専務","部長","課長","係長"]

members = [
  { name: "四郎", status: "課長"},
  { name: "三郎", status: "部長"},
  { name: "二郎", status: "専務"},
  { name: "五郎", status: "係長"},
  { name: "一郎", status: "社長"},
]

members.sort_by!{ |member| classes.find_index(member[:status]) }

p members

#=> [{:name=>"一郎", :status=>"社長"}, {:name=>"二郎", :status=>"専務"}, {:name=>"三郎", :status=>"部長"}, {:name=>"四郎", :status=>"課長"}, {:name=>"五郎", :status=>"係長"}]
