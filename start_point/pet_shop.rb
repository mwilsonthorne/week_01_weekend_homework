def pet_shop_name (name)
  name [:name]
end

def total_cash (sum)
  sum [:admin][:total_cash]
end

def add_or_remove_cash(cash, total)
  cash [:admin][:total_cash] += total
end

def add_or_remove_cash(cash, total)
  cash [:admin][:total_cash] += total
end

def pets_sold(sold)
  sold [:admin][:pets_sold]
end

def increase_pets_sold (pets_sold, total_sold)
  pets_sold [:admin][:pets_sold] += total_sold
end

def stock_count(length)
  length [:pets].length
end

def pets_by_breed (pet_shop, breed)
  pets = []
  for dog in pet_shop[:pets] # for (key) in (the hash)
    if dog[:breed] == breed # if (is in the breed section) = our word
      pets.push(dog[:breed])
    end
  end
     return pets
end


def find_pet_by_name(pet_shop, breed)
  result = nil
  for pet in pet_shop[:pets]
    if pet[:name] == breed # total << name
      result = pet
    end
  end

  return result
end

def remove_pet_by_name(pet_shop, name)
  pet = find_pet_by_name(pet_shop, name)
  pet_shop[:pets].delete(pet)
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
  return pet_shop[:pets].length
end

def customer_pet_count(customer)
  customer[:pets].count
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets].push(new_pet)
  return customer[:pets].count
end
