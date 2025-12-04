# language packs
# codeql/cpp-queries for C/C++
# codeql/csharp-queries for C#
# codeql/go-queries for Go
# codeql/java-queries for Java and Kotlin
# codeql/javascript-queries for JavaScript and TypeScript
# codeql/python-queries for Python
# codeql/ruby-queries for Ruby
# codeql/swift-queries for Swift

# install
codeql pack download codeql/<language>-queries

# in each project
codeql database create ./codeql-db --language=javascript --source-root . 
    
# multiple languages
codeql database create ./codeql-db --db-cluster --language=javascript,python --source-root . 

# analyze script
codeql database analyze codeql-db \
  --format=sarif-latest \
  --output=results.sarif

# per language analysis
codeql database analyze codeql-db/javascript \
  --format=sarif-latest \
  --output=results-js.sarif

codeql database analyze codeql-db/python \
  --format=sarif-latest \
  --output=results-py.sarif

# working scripts
codeql database create ./codeql-db --db-cluster \
    --language=cpp,csharp,go,java,javascript,python,ruby,swift # some require build

codeql database create ./codeql-db --db-cluster \
    --language=go,javascript,python