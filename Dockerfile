# Code generated by protoc-gen-liquibase. DO NOT EDIT.
FROM liquibase/liquibase:4.28.0
COPY future_rollback_count_sql.sh /entry.sh
ENTRYPOINT ["/entry.sh"]
