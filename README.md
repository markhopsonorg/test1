# test1 Function

This Lambda was created with Flipp MS Platform.

This repo was seeded by the Flipp MS Platform with the following files:

```js
.
├── .circleci
|   └── config.yml
├── functions
|   └── test1
|   |   └── index.js
|   |   └── function.json
|   |   └── package.json
├── project.json
├── README.md
```

# Files

## .circleci/config.yml

CircleCI config file for deploying this to AWS Lambda with Flipp MS Platform scripts.

## functions/ (dir)

Flipp uses the [Apex](http://apex.run/) directory structure so each Serverless Functions would have it's own folder here. 

The child directory names will be the name used for the Lambda if `"nameTemplate": "{{.Function.Name}}"` inside `project.json`.  Otherwise it will use Apex default naming.

## functions/test1

Everything in this folder will be packaged and uploaded to the Lambda.

You can have multiple Functions per Repo but this is not offically supported by the MS Platform yet.  You will need custom work to support this.

## functions/test1/project.json

This configuration file is taken directly from [Apex](http://apex.run/).

This file can contain the following settings.  These values can be overriden per function in the `function.json`.  

* name
* description
* memory
* runtime
* timeout
* handler
* nameTemplate 

## functions/test1/function.json

Also taken from [Apex](http://apex.run/).  This file must contain (atleast) the following params (it can also include params from project.json it wants to override).

* role (IAM Role)
* description

# Dev Getting Started

Go to the function folder, uncomment the invocation block at the bottom of the `index.js` (or what ever your entrypoint file is), and run it like any other javascript file.

*Tip* Use Wishabi-Dev AWS for root access to test

```js
// The invocation part usually looks like this
exports.handle(sampleEvent, sampleContext, (err) => {
  // ...
});
```

```
cd functions/test1
npm install
node index.js
```