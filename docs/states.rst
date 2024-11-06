Available states
----------------

The following states are found in this formula:

.. contents::
   :local:


``tool_karabiner``
~~~~~~~~~~~~~~~~~~
*Meta-state*.

Performs all operations described in this formula according to the specified configuration.


``tool_karabiner.package``
~~~~~~~~~~~~~~~~~~~~~~~~~~
Installs the Karabiner Elements package only.


``tool_karabiner.config``
~~~~~~~~~~~~~~~~~~~~~~~~~
Manages the Karabiner Elements package configuration by

* recursively syncing from a dotfiles repo

Has a dependency on `tool_karabiner.package`_.


``tool_karabiner.clean``
~~~~~~~~~~~~~~~~~~~~~~~~
*Meta-state*.

Undoes everything performed in the ``tool_karabiner`` meta-state
in reverse order.


``tool_karabiner.package.clean``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Removes the Karabiner Elements package.
Has a dependency on `tool_karabiner.config.clean`_.


``tool_karabiner.config.clean``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Removes the configuration of the Karabiner Elements package.


