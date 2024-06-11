# Comparable::Reverse

This tiny gem allows you to reverse `sort_by` order.

## Installation

```sh
gem install comparable-reverse
```

## Usage

```ruby
require 'comparable/reverse'

[1, 3, 2].sort_by { |number| Comparable::Reverse[number] }
#=> [3, 2, 1]
```
