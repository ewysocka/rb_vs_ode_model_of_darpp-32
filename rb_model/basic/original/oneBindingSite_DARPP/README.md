Inducing a competition between phosphatases and kinases by
designing DARPP-32 interface so that it has a single
binding site separately and three phoshophorylation
sites as internal states:

-- changed DARPP-32 agent specification from:

    %agent: D(thr34~u~p, ser137~u~p, thr75~u~p)

(each site with internal state can bind)

-- to this:

    %agent: D(s, thr34~u~p, ser137~u~p, thr75~u~p)

(only ‘s’ site can bind, the rest has only states
but has no binding partners)
