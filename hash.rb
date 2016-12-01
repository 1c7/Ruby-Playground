a = {}

p a[:missing]
# p a.fetch(:missing)  # would rise error

# a[:some_key] = :value

p a.fetch(:some_key) { p 'haha' } # run twice? why? # not exist would run block
