SELECT COUNT(email)
FROM soc_net_db.users_table
WHERE email LIKE '%@gmail.com';
-- This is a very simple pattern match.
-- - The wildcard operator isn't `*`- it's the **`%`** here! SQL is very primitive and thus weird.
-- - MySQL also provides using RegEx if you put `REGEXP` after `LIKE`.
-- - Yes, you can also use the wildcard more than once: '`UserNumber%WhoLivesIn%`' is valid!
--      `[a-z]%` and `[^0-9]%` are built-into SQL interpreters and can be used without MySQL's `REGEXP`.
-- - `||` is used to concatenate these 'search-strings' (*e.g. `'prefix' || '%' || 'suffix'`*).
-- - `LIKE '%\%%=%' ESCAPE '\';` will search for expressions like `10 % 2 = 0`; it lets the interpreter
--      know you're using a backslash to treat the `%` as a part of the search-string!
-- - `WHERE your_column & 1 = 1;` is literally searching based on Boolean flags!
--      (THAT'S ACTUALLY SUPER USEFUL!!!)
-- - PostgreSQL also has its own thingies; use `WHERE your_column ~ '^your_pattern';` 
--      for case-sensitive matching, or use a `~*` instead of just `~` for a case-*in*sensitive match.
--
-- ...Gotta' remember the `count()` function, though.