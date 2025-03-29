using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Domain.Entities;

[Table("group")]
public class GroupEntity
{
    public Guid Id { get; set; }
    
    [Required]
    public string Name { get; set; } = string.Empty;

    public GroupEntity() {}

    public GroupEntity(string name)
    {
        Id = Guid.NewGuid();
        Name = name;
    }
}
