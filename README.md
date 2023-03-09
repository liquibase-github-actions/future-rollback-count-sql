# Liquibase Future Rollback Count Sql Action
Official GitHub Action to run Liquibase Future Rollback Count Sql in your GitHub Action Workflow. For more information on how future rollback count sql works visit the [Official Liquibase Documentation](https://docs.liquibase.com/commands/home.html).
## Future Rollback Count Sql
Generates SQL to sequentially revert <count> number of changes
## Usage
```yaml
steps:
- uses: actions/checkout@v3
- uses: liquibase-github-actions/future-rollback-count-sql@v4.20.0
  with:
    # The root changelog
    # string
    # Required
    changelogFile: ""

    # Number of changesets to generate rollback SQL for
    # int32
    # Required
    count: ""

    # The JDBC database connection URL
    # string
    # Required
    url: ""

    # Changeset contexts to match
    # string
    # Optional
    contexts: ""

    # The default catalog name to use for the database connection
    # string
    # Optional
    defaultCatalogName: ""

    # The default schema name to use for the database connection
    # string
    # Optional
    defaultSchemaName: ""

    # The JDBC driver class
    # string
    # Optional
    driver: ""

    # The JDBC driver properties file
    # string
    # Optional
    driverPropertiesFile: ""

    # Changeset labels to match
    # string
    # Optional
    labelFilter: ""

    # Control whether names of objects in the default catalog are fully qualified or not. If true they are. If false, only objects outside the default catalog are fully qualified
    # bool
    # Optional
    outputDefaultCatalog: ""

    # Control whether names of objects in the default schema are fully qualified or not. If true they are. If false, only objects outside the default schema are fully qualified
    # bool
    # Optional
    outputDefaultSchema: ""

    # The database password
    # string
    # Optional
    password: ""

    # The database username
    # string
    # Optional
    username: ""

```

### Secrets
It is a good practice to protect your database credentials with [GitHub Secrets](https://docs.github.com/en/actions/security-guides/encrypted-secrets)

## Optional Liquibase Global Inputs
The liquibase future rollback count sql action accepts all valid liquibase global options as optional parameters. A full list is available in the official [Liquibase Documentation](https://docs.liquibase.com/parameters/command-parameters.html).

### Example
```yaml
steps:
  - uses: actions/checkout@v3
  - uses: liquibase-github-actions/future-rollback-count-sql@v4.20.0
    with:
      changelogFile: ""
      count: ""
      url: ""
      headless: true
      licenseKey: ${{ secrets.LIQUIBASE_LICENSE_KEY }}
      logLevel: INFO
```

## Feedback and Issues
This action is automatically generated. Please submit all feedback and issues with the [generator repository](https://github.com/liquibase/github-action-generator/issues).
