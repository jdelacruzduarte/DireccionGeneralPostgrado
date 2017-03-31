﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DireccionGeneralPostGrado
{
	using System.Data.Linq;
	using System.Data.Linq.Mapping;
	using System.Data;
	using System.Collections.Generic;
	using System.Reflection;
	using System.Linq;
	using System.Linq.Expressions;
	using System.ComponentModel;
	using System;
	
	
	[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="SISGESDOC")]
	public partial class DBclassDataContext : System.Data.Linq.DataContext
	{
		
		private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
		
    #region Extensibility Method Definitions
    partial void OnCreated();
    partial void InsertTBusr(TBusr instance);
    partial void UpdateTBusr(TBusr instance);
    partial void DeleteTBusr(TBusr instance);
    partial void InsertTBent(TBent instance);
    partial void UpdateTBent(TBent instance);
    partial void DeleteTBent(TBent instance);
    #endregion
		
		public DBclassDataContext() : 
				base(global::System.Configuration.ConfigurationManager.ConnectionStrings["SISGESDOCConnectionString"].ConnectionString, mappingSource)
		{
			OnCreated();
		}
		
		public DBclassDataContext(string connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public DBclassDataContext(System.Data.IDbConnection connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public DBclassDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public DBclassDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public System.Data.Linq.Table<TBusr> TBusrs
		{
			get
			{
				return this.GetTable<TBusr>();
			}
		}
		
		public System.Data.Linq.Table<TBent> TBents
		{
			get
			{
				return this.GetTable<TBent>();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.TBusr")]
	public partial class TBusr : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _idUsuario;
		
		private string _nombre;
		
		private string _apellido;
		
		private string _perfil;
		
		private string _nick;
		
		private string _pass;
		
		private string _estado;
		
		private EntitySet<TBent> _TBents;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnidUsuarioChanging(int value);
    partial void OnidUsuarioChanged();
    partial void OnnombreChanging(string value);
    partial void OnnombreChanged();
    partial void OnapellidoChanging(string value);
    partial void OnapellidoChanged();
    partial void OnperfilChanging(string value);
    partial void OnperfilChanged();
    partial void OnnickChanging(string value);
    partial void OnnickChanged();
    partial void OnpassChanging(string value);
    partial void OnpassChanged();
    partial void OnestadoChanging(string value);
    partial void OnestadoChanged();
    #endregion
		
		public TBusr()
		{
			this._TBents = new EntitySet<TBent>(new Action<TBent>(this.attach_TBents), new Action<TBent>(this.detach_TBents));
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_idUsuario", DbType="Int NOT NULL", IsPrimaryKey=true)]
		public int idUsuario
		{
			get
			{
				return this._idUsuario;
			}
			set
			{
				if ((this._idUsuario != value))
				{
					this.OnidUsuarioChanging(value);
					this.SendPropertyChanging();
					this._idUsuario = value;
					this.SendPropertyChanged("idUsuario");
					this.OnidUsuarioChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_nombre", DbType="VarChar(45) NOT NULL", CanBeNull=false)]
		public string nombre
		{
			get
			{
				return this._nombre;
			}
			set
			{
				if ((this._nombre != value))
				{
					this.OnnombreChanging(value);
					this.SendPropertyChanging();
					this._nombre = value;
					this.SendPropertyChanged("nombre");
					this.OnnombreChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_apellido", DbType="VarChar(45) NOT NULL", CanBeNull=false)]
		public string apellido
		{
			get
			{
				return this._apellido;
			}
			set
			{
				if ((this._apellido != value))
				{
					this.OnapellidoChanging(value);
					this.SendPropertyChanging();
					this._apellido = value;
					this.SendPropertyChanged("apellido");
					this.OnapellidoChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_perfil", DbType="VarChar(45) NOT NULL", CanBeNull=false)]
		public string perfil
		{
			get
			{
				return this._perfil;
			}
			set
			{
				if ((this._perfil != value))
				{
					this.OnperfilChanging(value);
					this.SendPropertyChanging();
					this._perfil = value;
					this.SendPropertyChanged("perfil");
					this.OnperfilChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_nick", DbType="VarChar(8) NOT NULL", CanBeNull=false)]
		public string nick
		{
			get
			{
				return this._nick;
			}
			set
			{
				if ((this._nick != value))
				{
					this.OnnickChanging(value);
					this.SendPropertyChanging();
					this._nick = value;
					this.SendPropertyChanged("nick");
					this.OnnickChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_pass", DbType="VarChar(15) NOT NULL", CanBeNull=false)]
		public string pass
		{
			get
			{
				return this._pass;
			}
			set
			{
				if ((this._pass != value))
				{
					this.OnpassChanging(value);
					this.SendPropertyChanging();
					this._pass = value;
					this.SendPropertyChanged("pass");
					this.OnpassChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_estado", DbType="VarChar(8) NOT NULL", CanBeNull=false)]
		public string estado
		{
			get
			{
				return this._estado;
			}
			set
			{
				if ((this._estado != value))
				{
					this.OnestadoChanging(value);
					this.SendPropertyChanging();
					this._estado = value;
					this.SendPropertyChanged("estado");
					this.OnestadoChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="TBusr_TBent", Storage="_TBents", ThisKey="idUsuario", OtherKey="idUsuario")]
		public EntitySet<TBent> TBents
		{
			get
			{
				return this._TBents;
			}
			set
			{
				this._TBents.Assign(value);
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
		
		private void attach_TBents(TBent entity)
		{
			this.SendPropertyChanging();
			entity.TBusr = this;
		}
		
		private void detach_TBents(TBent entity)
		{
			this.SendPropertyChanging();
			entity.TBusr = null;
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.TBent")]
	public partial class TBent : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _idEntrada;
		
		private int _idUsuario;
		
		private System.Nullable<System.DateTime> _fechaEntrada;
		
		private int _numOficio;
		
		private string _asunto;
		
		private string _lugOrigen;
		
		private string _documentoRecibido;
		
		private string _estado;
		
		private string _descripcion;
		
		private EntityRef<TBusr> _TBusr;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnidEntradaChanging(int value);
    partial void OnidEntradaChanged();
    partial void OnidUsuarioChanging(int value);
    partial void OnidUsuarioChanged();
    partial void OnfechaEntradaChanging(System.Nullable<System.DateTime> value);
    partial void OnfechaEntradaChanged();
    partial void OnnumOficioChanging(int value);
    partial void OnnumOficioChanged();
    partial void OnasuntoChanging(string value);
    partial void OnasuntoChanged();
    partial void OnlugOrigenChanging(string value);
    partial void OnlugOrigenChanged();
    partial void OndocumentoRecibidoChanging(string value);
    partial void OndocumentoRecibidoChanged();
    partial void OnestadoChanging(string value);
    partial void OnestadoChanged();
    partial void OndescripcionChanging(string value);
    partial void OndescripcionChanged();
    #endregion
		
		public TBent()
		{
			this._TBusr = default(EntityRef<TBusr>);
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_idEntrada", DbType="Int NOT NULL", IsPrimaryKey=true)]
		public int idEntrada
		{
			get
			{
				return this._idEntrada;
			}
			set
			{
				if ((this._idEntrada != value))
				{
					this.OnidEntradaChanging(value);
					this.SendPropertyChanging();
					this._idEntrada = value;
					this.SendPropertyChanged("idEntrada");
					this.OnidEntradaChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_idUsuario", DbType="Int NOT NULL")]
		public int idUsuario
		{
			get
			{
				return this._idUsuario;
			}
			set
			{
				if ((this._idUsuario != value))
				{
					if (this._TBusr.HasLoadedOrAssignedValue)
					{
						throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
					}
					this.OnidUsuarioChanging(value);
					this.SendPropertyChanging();
					this._idUsuario = value;
					this.SendPropertyChanged("idUsuario");
					this.OnidUsuarioChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_fechaEntrada", DbType="Date")]
		public System.Nullable<System.DateTime> fechaEntrada
		{
			get
			{
				return this._fechaEntrada;
			}
			set
			{
				if ((this._fechaEntrada != value))
				{
					this.OnfechaEntradaChanging(value);
					this.SendPropertyChanging();
					this._fechaEntrada = value;
					this.SendPropertyChanged("fechaEntrada");
					this.OnfechaEntradaChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_numOficio", DbType="Int NOT NULL")]
		public int numOficio
		{
			get
			{
				return this._numOficio;
			}
			set
			{
				if ((this._numOficio != value))
				{
					this.OnnumOficioChanging(value);
					this.SendPropertyChanging();
					this._numOficio = value;
					this.SendPropertyChanged("numOficio");
					this.OnnumOficioChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_asunto", DbType="VarChar(45)")]
		public string asunto
		{
			get
			{
				return this._asunto;
			}
			set
			{
				if ((this._asunto != value))
				{
					this.OnasuntoChanging(value);
					this.SendPropertyChanging();
					this._asunto = value;
					this.SendPropertyChanged("asunto");
					this.OnasuntoChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_lugOrigen", DbType="VarChar(45) NOT NULL", CanBeNull=false)]
		public string lugOrigen
		{
			get
			{
				return this._lugOrigen;
			}
			set
			{
				if ((this._lugOrigen != value))
				{
					this.OnlugOrigenChanging(value);
					this.SendPropertyChanging();
					this._lugOrigen = value;
					this.SendPropertyChanged("lugOrigen");
					this.OnlugOrigenChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_documentoRecibido", DbType="VarChar(500)")]
		public string documentoRecibido
		{
			get
			{
				return this._documentoRecibido;
			}
			set
			{
				if ((this._documentoRecibido != value))
				{
					this.OndocumentoRecibidoChanging(value);
					this.SendPropertyChanging();
					this._documentoRecibido = value;
					this.SendPropertyChanged("documentoRecibido");
					this.OndocumentoRecibidoChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_estado", DbType="VarChar(12) NOT NULL", CanBeNull=false)]
		public string estado
		{
			get
			{
				return this._estado;
			}
			set
			{
				if ((this._estado != value))
				{
					this.OnestadoChanging(value);
					this.SendPropertyChanging();
					this._estado = value;
					this.SendPropertyChanged("estado");
					this.OnestadoChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_descripcion", DbType="VarChar(50) NOT NULL", CanBeNull=false)]
		public string descripcion
		{
			get
			{
				return this._descripcion;
			}
			set
			{
				if ((this._descripcion != value))
				{
					this.OndescripcionChanging(value);
					this.SendPropertyChanging();
					this._descripcion = value;
					this.SendPropertyChanged("descripcion");
					this.OndescripcionChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="TBusr_TBent", Storage="_TBusr", ThisKey="idUsuario", OtherKey="idUsuario", IsForeignKey=true)]
		public TBusr TBusr
		{
			get
			{
				return this._TBusr.Entity;
			}
			set
			{
				TBusr previousValue = this._TBusr.Entity;
				if (((previousValue != value) 
							|| (this._TBusr.HasLoadedOrAssignedValue == false)))
				{
					this.SendPropertyChanging();
					if ((previousValue != null))
					{
						this._TBusr.Entity = null;
						previousValue.TBents.Remove(this);
					}
					this._TBusr.Entity = value;
					if ((value != null))
					{
						value.TBents.Add(this);
						this._idUsuario = value.idUsuario;
					}
					else
					{
						this._idUsuario = default(int);
					}
					this.SendPropertyChanged("TBusr");
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
}
#pragma warning restore 1591
