json.array!(@members) do |member|
  json.extract! member, :id, :mem_first_name, :mem_last_name, :mem_mobile_no, :mem_alt_mobile_no, :mem_email, :mem_address
  json.url member_url(member, format: :json)
end
