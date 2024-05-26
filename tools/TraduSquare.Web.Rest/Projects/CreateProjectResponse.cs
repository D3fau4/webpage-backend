﻿namespace TraduSquare.Web.Rest.Projects;

public record CreateProjectResponse
{
    public int Id { get; set; }
    public required string Title { get; set; }
    public required string Slug { get; set; }
    public string? TechnicalInfo { get; set; }
    public string? Description { get; set; }
    public string? Team { get; set; }
    public string? Download { get; set; }
    public string? AdditionalInfo { get; set; }
    public string? BuyLink { get; set; }
    public string? CreatedAt { get; set; }
    public string? UpdatedAt { get; set; }
    public string? Uuid { get; set; }
}
