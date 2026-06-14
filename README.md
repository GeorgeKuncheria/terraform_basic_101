## To Configure aws in terminal

```bash
aws configure
```

## To initialize terraform after providing provider.tf

```bash
terraform init
```


## Building resources

Whatever resources mentioned will be built not yet pushed to AWS

```bash
terraform plan
```

## To run application

```bash
terraform apply
```

OR

```bash
terraform apply --auto-approve
```

## To destroy resources

```bash
terraform destroy
```

OR

```bash
terraform destroy --auto-approve
```


## To get get information on resources

```bash
terraform state list
```

On a particular resource

```bash
terraform state show "resource_name"
```


During production you want to keep terraform in a locked state when others are also using the file to create resources



# Meta-Arguments

Meta-arguments are a class of arguments built into the Terraform configuration language that control how Terraform creates and manages your infrastructure. You can use meta-arguments in any type of resource. You can also use most meta-arguments in `module` blocks.

The provider developer determines resource-specific arguments, but all resources support meta-arguments that let you manage resources' infrastructure lifecycle, including destruction behavior, preventing destruction, and establishing dependencies between resources. Terraform provides the following meta-arguments.

### depends-on

The `depends_on` meta-argument instructs Terraform to complete all actions on the dependency object, including `read` operations, before performing actions on the object declaring the dependency. Use the depends_on argument to explicitly set the order in which Terraform creates resources.

### count

By default, Terraform configures one infrastructure object for each `resource, module, and ephemeral block`. Terraform also creates single instances of a module per module block. You can add the `count` argument to `resource, module, and ephemeral blocks` to create and manage multiple instances of each without writing a separate block for each instance.



### for_each

By default, Terraform configures one infrastructure object for each resource, module, and ephemeral block. You can add the `for_each` block to your `resource, data, module, and ephemeral blocks` to create and manage several similar objects, such as a fixed pool of compute instances, without writing a separate block for each instance. Refer to the for_each reference for details.