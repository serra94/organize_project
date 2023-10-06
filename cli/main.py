import click


@click.command()
def cli_command():
    """Este é um exemplo de CLI usando Click."""
    click.echo('Olá, este é o seu CLI!')


if __name__ == '__main__':
    cli_command()
