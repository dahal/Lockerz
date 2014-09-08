# Create 1000 small lockers
for i in 1..1000
  Locker.create(name: "S#{i}", size: "Small")
end

# Create 1000 Medium lockers
for i in 1..1000
  Locker.create(name: "M#{i}", size: "Medium")
end

# Create 1000 Large lockers
for i in 1..1000
  Locker.create(name: "L#{i}", size: "Large")
end