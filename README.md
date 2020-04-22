# Justify

justify helps in formatting a very long line of text breaking it up for a given width

## Installation

Add this line to your application's Gemfile:

    gem 'justify'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install justify

## Usage

Using justify it's easy.

```
require 'justify'


"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat".justify

# Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod tempor incididunt ut labore
# et dolore magna aliqua Ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut
# aliquip ex ea commodo consequat

"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat".justify(20)

# Lorem ipsum dolor sit amet
# consectetur adipisicing
# elit sed do eiusmod tempor
# incididunt ut labore et
# dolore magna aliqua. Ut
# enim ad minim veniam quis
# nostrud exercitation ullamco
# laboris nisi ut aliquip
# ex ea commodo consequat

"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat".justify(20,4)

#     Lorem ipsum dolor sit amet
#     consectetur adipisicing
#     elit sed do eiusmod tempor
#     incididunt ut labore et
#     dolore magna aliqua. Ut
#     enim ad minim veniam quis
#     nostrud exercitation ullamco
#     laboris nisi ut aliquip
#     ex ea commodo consequat
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
