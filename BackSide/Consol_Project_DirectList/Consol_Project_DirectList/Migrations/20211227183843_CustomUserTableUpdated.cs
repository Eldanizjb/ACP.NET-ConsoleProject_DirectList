using Microsoft.EntityFrameworkCore.Migrations;

namespace Consol_Project_DirectList.Migrations
{
    public partial class CustomUserTableUpdated : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "RestaurantId",
                table: "Details");

            migrationBuilder.AddColumn<string>(
                name: "Review",
                table: "AspNetUsers",
                type: "nvarchar(1000)",
                maxLength: 1000,
                nullable: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Review",
                table: "AspNetUsers");

            migrationBuilder.AddColumn<int>(
                name: "RestaurantId",
                table: "Details",
                type: "int",
                nullable: false,
                defaultValue: 0);
        }
    }
}
