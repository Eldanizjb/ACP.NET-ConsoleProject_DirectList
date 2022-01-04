using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace Consol_Project_DirectList.Migrations
{
    public partial class AllTeblesUpdated : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Guest_Book_BookId",
                table: "Guest");

            migrationBuilder.DropForeignKey(
                name: "FK_Restaurant_Details_DetailsId",
                table: "Restaurant");

            migrationBuilder.DropForeignKey(
                name: "FK_Restaurant_KeyPeople_KeyPeopleId",
                table: "Restaurant");

            migrationBuilder.DropForeignKey(
                name: "FK_Restaurant_RestaurantCategory_CategoryId",
                table: "Restaurant");

            migrationBuilder.DropTable(
                name: "Book");

            migrationBuilder.DropTable(
                name: "ContactInfo");

            migrationBuilder.DropTable(
                name: "Features");

            migrationBuilder.DropTable(
                name: "Menu");

            migrationBuilder.DropTable(
                name: "Details");

            migrationBuilder.DropTable(
                name: "Helper");

            migrationBuilder.DropTable(
                name: "KeyPeople");

            migrationBuilder.DropTable(
                name: "Locations");

            migrationBuilder.DropIndex(
                name: "IX_Restaurant_CategoryId",
                table: "Restaurant");

            migrationBuilder.DropIndex(
                name: "IX_Restaurant_DetailsId",
                table: "Restaurant");

            migrationBuilder.DropIndex(
                name: "IX_Restaurant_KeyPeopleId",
                table: "Restaurant");

            migrationBuilder.DropIndex(
                name: "IX_Guest_BookId",
                table: "Guest");

            migrationBuilder.DropColumn(
                name: "CategoryId",
                table: "Restaurant");

            migrationBuilder.DropColumn(
                name: "DetailsId",
                table: "Restaurant");

            migrationBuilder.DropColumn(
                name: "KeyPeopleId",
                table: "Restaurant");

            migrationBuilder.DropColumn(
                name: "BookId",
                table: "Guest");

            migrationBuilder.AddColumn<string>(
                name: "About",
                table: "Restaurant",
                type: "ntext",
                nullable: true);

            migrationBuilder.AddColumn<short>(
                name: "Capacity",
                table: "Restaurant",
                type: "smallint",
                nullable: false,
                defaultValue: (short)0);

            migrationBuilder.AddColumn<DateTime>(
                name: "ClosingTime",
                table: "Restaurant",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified));

            migrationBuilder.AddColumn<string>(
                name: "Location",
                table: "Restaurant",
                type: "nvarchar(500)",
                maxLength: 500,
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Locationlink",
                table: "Restaurant",
                type: "nvarchar(2000)",
                maxLength: 2000,
                nullable: true);

            migrationBuilder.AddColumn<DateTime>(
                name: "OpeningTime",
                table: "Restaurant",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified));

            migrationBuilder.AddColumn<int>(
                name: "RestaurantCategoryId",
                table: "Restaurant",
                type: "int",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Website",
                table: "Restaurant",
                type: "nvarchar(250)",
                maxLength: 250,
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "RestaurantId",
                table: "Comment",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.CreateIndex(
                name: "IX_Restaurant_RestaurantCategoryId",
                table: "Restaurant",
                column: "RestaurantCategoryId");

            migrationBuilder.CreateIndex(
                name: "IX_Comment_RestaurantId",
                table: "Comment",
                column: "RestaurantId");

            migrationBuilder.AddForeignKey(
                name: "FK_Comment_Restaurant_RestaurantId",
                table: "Comment",
                column: "RestaurantId",
                principalTable: "Restaurant",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_Restaurant_RestaurantCategory_RestaurantCategoryId",
                table: "Restaurant",
                column: "RestaurantCategoryId",
                principalTable: "RestaurantCategory",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Comment_Restaurant_RestaurantId",
                table: "Comment");

            migrationBuilder.DropForeignKey(
                name: "FK_Restaurant_RestaurantCategory_RestaurantCategoryId",
                table: "Restaurant");

            migrationBuilder.DropIndex(
                name: "IX_Restaurant_RestaurantCategoryId",
                table: "Restaurant");

            migrationBuilder.DropIndex(
                name: "IX_Comment_RestaurantId",
                table: "Comment");

            migrationBuilder.DropColumn(
                name: "About",
                table: "Restaurant");

            migrationBuilder.DropColumn(
                name: "Capacity",
                table: "Restaurant");

            migrationBuilder.DropColumn(
                name: "ClosingTime",
                table: "Restaurant");

            migrationBuilder.DropColumn(
                name: "Location",
                table: "Restaurant");

            migrationBuilder.DropColumn(
                name: "Locationlink",
                table: "Restaurant");

            migrationBuilder.DropColumn(
                name: "OpeningTime",
                table: "Restaurant");

            migrationBuilder.DropColumn(
                name: "RestaurantCategoryId",
                table: "Restaurant");

            migrationBuilder.DropColumn(
                name: "Website",
                table: "Restaurant");

            migrationBuilder.DropColumn(
                name: "RestaurantId",
                table: "Comment");

            migrationBuilder.AddColumn<int>(
                name: "CategoryId",
                table: "Restaurant",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<int>(
                name: "DetailsId",
                table: "Restaurant",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<int>(
                name: "KeyPeopleId",
                table: "Restaurant",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<int>(
                name: "BookId",
                table: "Guest",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.CreateTable(
                name: "Book",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CreateDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    RestaurantId = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Book", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Book_Restaurant_RestaurantId",
                        column: x => x.RestaurantId,
                        principalTable: "Restaurant",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "Helper",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Content = table.Column<string>(type: "ntext", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Helper", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "KeyPeople",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Email = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: true),
                    Fullname = table.Column<string>(type: "nvarchar(250)", maxLength: 250, nullable: true),
                    Logins = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: true),
                    MainImage = table.Column<string>(type: "nvarchar(250)", maxLength: 250, nullable: true),
                    Phone = table.Column<string>(type: "nvarchar(30)", maxLength: 30, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_KeyPeople", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Locations",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Link = table.Column<string>(type: "nvarchar(500)", maxLength: 500, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Locations", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "ContactInfo",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    HelperId = table.Column<int>(type: "int", nullable: false),
                    Name = table.Column<string>(type: "nvarchar(250)", maxLength: 250, nullable: true),
                    Phone = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ContactInfo", x => x.Id);
                    table.ForeignKey(
                        name: "FK_ContactInfo_Helper_HelperId",
                        column: x => x.HelperId,
                        principalTable: "Helper",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "Features",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    HelperId = table.Column<int>(type: "int", nullable: false),
                    Name = table.Column<string>(type: "nvarchar(250)", maxLength: 250, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Features", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Features_Helper_HelperId",
                        column: x => x.HelperId,
                        principalTable: "Helper",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "Details",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CommentId = table.Column<int>(type: "int", nullable: true),
                    HelperId = table.Column<int>(type: "int", nullable: false),
                    Icon = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: true),
                    KeyPeopleId = table.Column<int>(type: "int", nullable: true),
                    LocationsId = table.Column<int>(type: "int", nullable: false),
                    Name = table.Column<string>(type: "nvarchar(250)", maxLength: 250, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Details", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Details_Comment_CommentId",
                        column: x => x.CommentId,
                        principalTable: "Comment",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_Details_Helper_HelperId",
                        column: x => x.HelperId,
                        principalTable: "Helper",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_Details_KeyPeople_KeyPeopleId",
                        column: x => x.KeyPeopleId,
                        principalTable: "KeyPeople",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_Details_Locations_LocationsId",
                        column: x => x.LocationsId,
                        principalTable: "Locations",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "Menu",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Detail = table.Column<string>(type: "nvarchar(500)", maxLength: 500, nullable: true),
                    DetailsId = table.Column<int>(type: "int", nullable: true),
                    Name = table.Column<string>(type: "nvarchar(250)", maxLength: 250, nullable: true),
                    Price = table.Column<decimal>(type: "money", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Menu", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Menu_Details_DetailsId",
                        column: x => x.DetailsId,
                        principalTable: "Details",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateIndex(
                name: "IX_Restaurant_CategoryId",
                table: "Restaurant",
                column: "CategoryId");

            migrationBuilder.CreateIndex(
                name: "IX_Restaurant_DetailsId",
                table: "Restaurant",
                column: "DetailsId");

            migrationBuilder.CreateIndex(
                name: "IX_Restaurant_KeyPeopleId",
                table: "Restaurant",
                column: "KeyPeopleId");

            migrationBuilder.CreateIndex(
                name: "IX_Guest_BookId",
                table: "Guest",
                column: "BookId");

            migrationBuilder.CreateIndex(
                name: "IX_Book_RestaurantId",
                table: "Book",
                column: "RestaurantId");

            migrationBuilder.CreateIndex(
                name: "IX_ContactInfo_HelperId",
                table: "ContactInfo",
                column: "HelperId");

            migrationBuilder.CreateIndex(
                name: "IX_Details_CommentId",
                table: "Details",
                column: "CommentId");

            migrationBuilder.CreateIndex(
                name: "IX_Details_HelperId",
                table: "Details",
                column: "HelperId");

            migrationBuilder.CreateIndex(
                name: "IX_Details_KeyPeopleId",
                table: "Details",
                column: "KeyPeopleId");

            migrationBuilder.CreateIndex(
                name: "IX_Details_LocationsId",
                table: "Details",
                column: "LocationsId");

            migrationBuilder.CreateIndex(
                name: "IX_Features_HelperId",
                table: "Features",
                column: "HelperId");

            migrationBuilder.CreateIndex(
                name: "IX_Menu_DetailsId",
                table: "Menu",
                column: "DetailsId");

            migrationBuilder.AddForeignKey(
                name: "FK_Guest_Book_BookId",
                table: "Guest",
                column: "BookId",
                principalTable: "Book",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_Restaurant_Details_DetailsId",
                table: "Restaurant",
                column: "DetailsId",
                principalTable: "Details",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_Restaurant_KeyPeople_KeyPeopleId",
                table: "Restaurant",
                column: "KeyPeopleId",
                principalTable: "KeyPeople",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_Restaurant_RestaurantCategory_CategoryId",
                table: "Restaurant",
                column: "CategoryId",
                principalTable: "RestaurantCategory",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
