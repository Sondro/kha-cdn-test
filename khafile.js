let project = new Project('Project');
project.addParameter('-dce full');
project.addSources('src');
resolve(project);
