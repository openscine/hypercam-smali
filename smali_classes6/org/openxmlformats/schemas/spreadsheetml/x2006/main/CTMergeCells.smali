.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCells;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCells$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCells;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sE130CAA0A01A7CDE5A2B4FEB8B311707"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "ctmergecells1242type"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCells;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewMergeCell()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCell;
.end method

.method public abstract getCount()J
.end method

.method public abstract getMergeCellArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCell;
.end method

.method public abstract getMergeCellArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCell;
.end method

.method public abstract getMergeCellList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCell;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewMergeCell(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCell;
.end method

.method public abstract isSetCount()Z
.end method

.method public abstract removeMergeCell(I)V
.end method

.method public abstract setCount(J)V
.end method

.method public abstract setMergeCellArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCell;)V
.end method

.method public abstract setMergeCellArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCell;)V
.end method

.method public abstract sizeOfMergeCellArray()I
.end method

.method public abstract unsetCount()V
.end method

.method public abstract xgetCount()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xsetCount(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method
