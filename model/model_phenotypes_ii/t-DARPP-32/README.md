## I tested if DARPP-32 could be defined twice in initial state but with a different
## signature to define easily a mixture of tDARPP and DARPP:

D(thr34~u~p, thr75~u~p, ser132~u~p)
D(thr75~u~p, ser132~u~p)

But it doesn't work:
>> ***Error (init.ka) line 3, char 7: Signature already defined***

It has to be defined as two separate agents with repeated rules for each.
