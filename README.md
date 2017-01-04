![Seashell](./artwork/logo_rendered.png)

# Welcome to Seashell
Seashell is a configuration management toolkit for bootstrapping disposable infrastructure. It allows hackers to easily provision servers, favoring convention over configuration to get things done quickly.

## How to use Seashell
1. Launch a new VM, such as with AWS, Digital Ocean, or Scaleway
2. `git clone` the Seashell repo
3. Run any Seashell command(s) you want
4. Stand there looking smart in front of your coworkers, as Seashell does all the heavy lifing
5. Use the server

## How does Seashell work?
Seashell is a collection of popular sysadmin tasks: installing Nginx, installing Python, setting up a daemon, etc. Rather than trying to support a million different versions of Nginx, or a million different ways to set up a daemon, Seashell uses the most popular, stable way. Because we limit package versions, **you can install any combination of services, and everything is compatible with everything else -- guaranteed.** If you've ever set up a server, this will make you cry in joy.

If you use Seashell, it makes sense to do everything the Seashell way because it just works.

And, really, do you *need* multiple versions of Nginx? :)

## What can Seashell do?
- Bootstrap CentOS 7
- Install Python 2
- Install the PostgreSQL client
- Install the MySQL client
- Install the Oracle client
- Install the Microsoft SQL client
- Install Airflow
- Install SupervisorD
- Daemonize a process, like Airflow
- Install Redis, as a master server
- Make /opt writable by the root group
- Add your user to the root group

## Why does the world need Seashell?
We are a quickly growing group of developers who think you shouldn't have to read a 500 page book to bootstrap a server. We have paid expensive Puppet/Chef/Ansible/Salt consultants, attended conferences, and hired trainers. At the end of the day, we think a Bash script is easier, faster, and cheaper.

Moreover, the dawn of disposable infrastructure has brought with it fundamental changes to managing servers. Servers today are in a rotating cluster; they are virtualized; they are in the cloud; they are controlled with an API. Rather than trying to keep servers alive for years, we measure in hours. For this reason, we see servers as diapers: to be opened up, to be used, and discarded.

## Who is Seashell for?
- Busy developers
- Novice hackers
- Senior sysadmins with deadlines

## Who is Seashell *not* for?
- People who want to install twenty different versions of Apache
- People who want to put their config files in weird places
- People who like spending a lot of time setting up servers
- People who want to run the same idempotent commands over and over again

## How do I change a server once I bootstrap it?
Destroy the server, and rebootstrap a new one how you'd like it. Seashell is opinionated software that views modifying servers as a primary source of issues and incompatabilities. When a server finishes a successful bootstrap, it enters an unknown state; we, therefore, eschew uninstalling, reinstalling, reconfiguring, and modifying existing infrastructure because it builds on an unknown state. We believe in leveraging the disposable nature of servers to maintain simplicity and reliability.

## What version of packages do you use?
We carefully select the most stable, current version of each package *that is compatible with everything else*. We will not, ever, support multiple versions of the same package, as it violates our core ethic of convention over configuration.

