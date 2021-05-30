# Terminology

- Data constructor `arity` - the number of constructor arguments. Nullary, Unary.

- Logical disjunction (or) - expressed in Haskell with pipe `|`

- `Sum type` - represents the logical disjunction in `algebraic data types`

- `Product` - any data constructor with two or more arguments. E.g. data Customer = Customer Int String. Customer data type is a product.

- `Higher kinded types` - Types of type constructors. They are not types until they are fully applied.
  E.g. In Haskell * -> * is a higher kinded type. It waits for a * to be fully applied.

- `Tuple` - is a type that allows you to store and pass around multiple values within a single value.
  It is a product type, not a sum type.

### Lazy evaluation

Two most common evaluation strategies:
    - innermost
    - outermost
__lazy evaluation = outermost evaluation + sharing of arguments__
__allows programs to be more modular: separate the control part of the program from the data part of the program.__

## Acronyms

- __ADT__ - Algebraic Data Type
- __CCC__ - Clear Concise and Correct
- __redex__ - reducible expression