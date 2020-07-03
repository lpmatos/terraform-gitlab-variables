1. O arquivo main.tf é onde informamos o provedor dos recursos que serão criados, como por exemplo a AWS. Nele definimos a região que os recursos ficarão alocados e as chaves de acesso para permitir a criação dos recursos na conta desejada.

```terraform
provider "aws" {
  region      = "us-east-1"
  access_key  = ""
  secret_key  = ""
}
```

2. O arquivo variables.tf é onde informamos todas as variáveis utilizadas no código de criação dos recursos.
