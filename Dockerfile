# Code generated by protoc-gen-liquibase. DO NOT EDIT.
FROM liquibase/liquibase:4.25.1
COPY future_rollback_count_sql.sh /entry.sh
ENTRYPOINT ["/entry.sh"]
