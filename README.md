<h1>Random DSpace Batch Metadata Generator</h1>

A very simple Ruby-based script for generating random metadata. It is hard coded to generate 100 rows of data, but it would be very easy to tweak that number. If you're feeling especially helpful, I invite you to fork a copy of this script and make it work with command line options. If you do so, a friendly pull request would be appreciated.

<h2>Contents</h2>

generate_random_batch_metadata.rb - the star of the show

<h2>What does it do?</h2>

Generates random metadata, for use in batch importing to DSpace. It's helpful for
quickly populating a developement instance of DSpace, so you can test indexing
and interface stuff like results paging. Besides, who doesn't like random
metadata?

<h2>Requirements</h2>

Ruby, of course, and the following gems:

 * [random_data](http://random-data.rubyforge.org/)
 * [faker](http://faker.rubyforge.org/)
 * [facets](http://rubyworks.github.io/facets/)

To install any of these gems, run <code>gem install GEM_NAME</code>

<h2>How to run</h2>

The Shebang line uses env, so this script should "just run" in any Unix-like environemnt. You're on your own with Windows, but, I bet you already know how to run a Ruby script in Windows. By "just run" I mean, you type this on your command prompt, after you ensure the script is executable (<code>chmod 755 generate_random_batch_metadata.rb</code>):

<code>./generate_random_batch_metadata.rb</code>

Enjoy!

<h2>Similar projects</h2>
Check out these other tools that do similar things:
 * [CWilper's GutenProc](https://github.com/cwilper/gutenproc) - fill your dev DSpace instance with the contents of Project Gutenberg
 * [CWilper's DSOgen](https://github.com/cwilper/dsogen) - more than just random metadata for DSpace!

<h2>License</h2>

<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License" style="border-width:0" src="http://i.creativecommons.org/l/by/4.0/80x15.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>.
