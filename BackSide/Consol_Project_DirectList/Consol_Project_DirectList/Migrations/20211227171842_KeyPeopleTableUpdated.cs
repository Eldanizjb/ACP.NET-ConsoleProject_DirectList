using Microsoft.EntityFrameworkCore.Migrations;

namespace Consol_Project_DirectList.Migrations
{
    public partial class KeyPeopleTableUpdated : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameColumn(
                name: "Name",
                table: "KeyPeople",
                newName: "MainImage");

            migrationBuilder.AddColumn<string>(
                name: "Email",
                table: "KeyPeople",
                type: "nvarchar(50)",
                maxLength: 50,
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Fullname",
                table: "KeyPeople",
                type: "nvarchar(250)",
                maxLength: 250,
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Logins",
                table: "KeyPeople",
                type: "nvarchar(50)",
                maxLength: 50,
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Phone",
                table: "KeyPeople",
                type: "nvarchar(30)",
                maxLength: 30,
                nullable: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Email",
                table: "KeyPeople");

            migrationBuilder.DropColumn(
                name: "Fullname",
                table: "KeyPeople");

            migrationBuilder.DropColumn(
                name: "Logins",
                table: "KeyPeople");

            migrationBuilder.DropColumn(
                name: "Phone",
                table: "KeyPeople");

            migrationBuilder.RenameColumn(
                name: "MainImage",
                table: "KeyPeople",
                newName: "Name");
        }
    }
}
