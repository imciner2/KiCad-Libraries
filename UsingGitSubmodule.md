# Using Git Submodule to Clone the Library

## Adding to the project (the 1st time)

1. Decide which directory will get the libraries (such as a directory called libraries)

2. Execute the following command (replacing libraries at the end with the desired directory from step 1):

    ``` git submodule add https://github.com/imciner2/KiCad-Libraries libraries ```

3. Interact with the libaries as if it is its own Git repository (aka. pull, commit, push, etc.).

## Updating libraries on fresh clone of KiCad Project

When you first clone a KiCad repository with a submodule of the library, it will not clone the libraries. In order to clone the libraries you must:

1. Initialize the submodules

    ``` git submodule init ```

2. Clone the submodules

    ``` git submodule update ```

This may not always put you on a branch in the server's repository (it may leave you on a floating head branch). To get back to a branch you can make changes to and push to the master, run this inside the submodule:

    ``` git checkout master ```
