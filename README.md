# fast_to_f

Crystal wrapper for [fast_double_parser](https://github.com/lemire/fast_double_parser).

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     fast_to_f:
       github: kostya/fast_to_f
   ```

2. Run `shards install` (requires gcc and wget).

## Usage

```crystal
require "fast_to_f"

if v = FastToF.parse?("0.54321")
  p v
end
```

## Benchmark

		str.to_f64: 6.40s
		FastToF.parse?(str): 1.62s

