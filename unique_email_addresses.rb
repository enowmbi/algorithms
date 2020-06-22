def unique_email_addresses(email_addresses)
  #rules: each email has local name and domain name, ignore .(period),remove all characters from the + sign in the local name

  formatted_email_addresses  = {}

  email_addresses.each do |email_address|
    local_name, domain_name = email_address.split(/@/)

    if local_name.include?('.')
      local_name.gsub!('.','')
    end

    if local_name.include?('+')
      local_name = local_name.split(/\+/)[0]    
    end

    #reconstruct email from formatted local_name and domain name 
    reconstructed_email_address = local_name + '@' + domain_name

    if(!formatted_email_addresses.has_key?(reconstructed_email_address))
      formatted_email_addresses[reconstructed_email_address] = 1
    end

  end

  return formatted_email_addresses.size

end
