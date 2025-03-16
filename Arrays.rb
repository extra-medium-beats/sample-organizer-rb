z = (1..100).to_a.shuffle
p z
y = z.select {|number|number.odd?}
p y
y << ("bruh")
p y
