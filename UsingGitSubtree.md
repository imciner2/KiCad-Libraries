# Using Git Subtrees to Clone the Library

## To get the contents of this library into a project git repository

1. Add the remote link:

    ``` git remote add libraries https://github.com/imciner2/KiCad-Libraries.git ```

2. Get the current libraries:

    ``` git fetch libraries ```

3. Initially add the libraries to a project:

    ``` git read-tree --prefix=2-Hardware/libraries -u libraries/master ```

4. Commit the libraries into the repository:

    ``` git commit -m "Kicad libraries initial commit" ```

- - -
## To read in any changes from remote into the project repository:

1. Fetch the libraries repository (if an error occurs running this command, add the remote library again)

    ``` git fetch libraries ```

2. Merge the changes

    ``` git merge -s subtree --squash libraries/master ```

3. Commit the changes

    ``` git commit -m "Updated libraries directory" ```

- - -
## To update the remote with any component changes from this project repository:

1. Create commits for the changes (make them seperate from everything else)

2. Fetch the libraries repository (if an error occurs running this command, add the remote library again)

		``` git fetch libraries ```

3. Create a new branch locally

		``` git checkout -b library-work libraries/master ```

4. Add the commits to the desired commits to the new branch (The command shown below will use the 5th commit before the current revision, simply modify the 5 to change which commit is referenced).

		``` git cherry-pick -x --strategy=subtree master~5 ```

5. Push the changes back to the library master

		``` git push libraries library-work:master ```

6. Change back to the project repository

		``` git checkout master ```

7. Delete the working branch

		``` git branch -D library-work ```
