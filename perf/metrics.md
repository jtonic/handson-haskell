
## Sequential (no optimization)

```
Finish!!! 30000
   4,730,012,256 bytes allocated in the heap
     443,289,776 bytes copied during GC
         290,224 bytes maximum residency (2 sample(s))
         201,296 bytes maximum slop
              20 MiB total memory in use (0 MB lost due to fragmentation)

                                     Tot time (elapsed)  Avg pause  Max pause
  Gen  0      2696 colls,  2696 par    9.667s   0.778s     0.0003s    0.0011s
  Gen  1         2 colls,     1 par    0.002s   0.000s     0.0002s    0.0002s

  Parallel GC work balance: 5.20% (serial 0%, perfect 100%)

  TASKS: 34 (1 bound, 33 peak workers (33 total), using -N16)

  SPARKS: 0 (0 converted, 0 overflowed, 0 dud, 0 GC'd, 0 fizzled)

  INIT    time    0.001s  (  0.006s elapsed)
  MUT     time    2.615s  (  1.704s elapsed)
  GC      time    9.669s  (  0.779s elapsed)
  EXIT    time    0.001s  (  0.006s elapsed)
  Total   time   12.285s  (  2.495s elapsed)

  Alloc rate    1,809,129,407 bytes per MUT second

  Productivity  21.3% of total user, 68.3% of total elapsed
```

## Sequential (optimization)
```
Finish!!! 30000
   4,312,537,120 bytes allocated in the heap
     445,096,000 bytes copied during GC
         287,536 bytes maximum residency (2 sample(s))
         187,600 bytes maximum slop
              20 MiB total memory in use (0 MB lost due to fragmentation)

                                     Tot time (elapsed)  Avg pause  Max pause
  Gen  0      2695 colls,  2695 par    7.528s   0.576s     0.0002s    0.0005s
  Gen  1         2 colls,     1 par    0.002s   0.000s     0.0002s    0.0002s

  Parallel GC work balance: 5.22% (serial 0%, perfect 100%)

  TASKS: 34 (1 bound, 33 peak workers (33 total), using -N16)

  SPARKS: 0 (0 converted, 0 overflowed, 0 dud, 0 GC'd, 0 fizzled)

  INIT    time    0.001s  (  0.008s elapsed)
  MUT     time    2.426s  (  1.548s elapsed)
  GC      time    7.531s  (  0.576s elapsed)
  EXIT    time    0.001s  (  0.008s elapsed)
  Total   time    9.959s  (  2.139s elapsed)

  Alloc rate    1,777,397,599 bytes per MUT second

  Productivity  24.4% of total user, 72.3% of total elapsed
```

## Parallelism (option 1)

```
Finish!!! 30000
   4,313,131,944 bytes allocated in the heap
     433,529,992 bytes copied during GC
          90,904 bytes maximum residency (2 sample(s))
          36,664 bytes maximum slop
               4 MiB total memory in use (0 MB lost due to fragmentation)

                                     Tot time (elapsed)  Avg pause  Max pause
  Gen  0      2695 colls,  2695 par    0.713s   0.360s     0.0001s    0.0005s
  Gen  1         2 colls,     1 par    0.000s   0.000s     0.0001s    0.0002s

  Parallel GC work balance: 0.01% (serial 0%, perfect 100%)

  TASKS: 6 (1 bound, 5 peak workers (5 total), using -N2)

  SPARKS: 3 (0 converted, 0 overflowed, 0 dud, 0 GC'd, 3 fizzled)

  INIT    time    0.000s  (  0.003s elapsed)
  MUT     time    1.245s  (  1.310s elapsed)
  GC      time    0.713s  (  0.360s elapsed)
  EXIT    time    0.000s  (  0.006s elapsed)
  Total   time    1.959s  (  1.680s elapsed)

  Alloc rate    3,463,358,772 bytes per MUT second

  Productivity  63.6% of total user, 78.0% of total elapsed
```

