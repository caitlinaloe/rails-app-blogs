def capitals
    { "USA" => "Washington, DC",
      "Canada" => "Ottawa",
      "United Kingdom" => "London",
      "France" => "Paris",
      "Germany" => "Berlin",
      "Egypt" => "Cairo",
      "Ghana" => "Accra",
      "Kenya" => "Nairobi",
      "Somalia" => "Mogadishu",
      "Sudan" => "Khartoum",
      "Tunisia" => "Tunis",
      "Japan" => "Tokyo",
      "China" => "Beijing",
      "Thailand" => "Bangkok",
      "India" => "New Delhi",
      "Philippines" => "Manila",
      "Australia" => "Canberra",
      "Kyrgyzstan" => "Bishkek"
    }
end

def find_capital(country)
  # Use the capitals value to return the city associated with country
  capitals[country]
end
