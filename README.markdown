Div
===

The `div` method renders your partial within an HTML `div` tag.
Additionally the `id` of the `div` is set to the name of the partial.

If the partial is meant to be reused multiple times inside an HTML
document then `div` can be told so, whereupon it will put the partial's
name into the element's class instead.


Installation
============

Inside your Rails application directory do:

      ./script/plugin install git://github.com/tpo/div.git


Examples
========

A `div` representing a unique element of a page
-----------------------------------------------

Given a view with the following line

      <%= div "sidebar" %>


and a partial `_sidebar.html.erb` containing

      link_to "Usage", usage_path()


you'll get the following HTML output

      <div id='sidebar'>
        <a href="/usage">Usage</a>
      </div>


A `div` representing a reusable element of a page
-------------------------------------------------

A view source like this:

      <%= div "logo", :reuse => true %>


and a partial `_logo.html.erb` containing

      link_to( image_tag("logo.png"), "/" )


will generate

      <div class='logo'>
        <a href="/"><img src="/images/logo.png" alt="Logo" /></a>
      </div>


Copyright (c) 2011 Tomáš Pospíšek, released under the MIT license
