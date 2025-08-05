ALTER SYSTEM SET log_statement = 'all';
ALTER SYSTEM SET logging_collector = 'on';
SELECT pg_reload_conf();
