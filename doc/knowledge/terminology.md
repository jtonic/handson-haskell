# Terminology

- Data constructor `arity` - the number of constructor arguments. Nullary, Unary.
- Logical disjunction (or) - expressed in Haskell with pipe `|`
- `Sum type` - represents the logical disjunction in `algebraic data types`
- `Product` - any data constructor with two or more arguments. E.g. data Customer = Customer Int String. Customer data type is a product.
- Higher kinded types - Types of type constructors. They are not types until they are fully applied.
  E.g. In Haskell * -> * is a higher kinded type. It waits for a * to be fully applied.

## Acronyms

- ADT - Algebraic Data Type
-