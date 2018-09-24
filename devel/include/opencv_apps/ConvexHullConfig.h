//#line 2 "/home/dlab/ros_catkin_ws/src/dynamic_reconfigure/templates/ConfigType.h.template"
// *********************************************************
//
// File autogenerated for the convex_hull package
// by the dynamic_reconfigure package.
// Please do not edit.
//
// ********************************************************/

#ifndef __convex_hull__CONVEXHULLCONFIG_H__
#define __convex_hull__CONVEXHULLCONFIG_H__

#include <dynamic_reconfigure/config_tools.h>
#include <limits>
#include <ros/node_handle.h>
#include <dynamic_reconfigure/ConfigDescription.h>
#include <dynamic_reconfigure/ParamDescription.h>
#include <dynamic_reconfigure/Group.h>
#include <dynamic_reconfigure/config_init_mutex.h>
#include <boost/any.hpp>

namespace convex_hull
{
  class ConvexHullConfigStatics;

  class ConvexHullConfig
  {
  public:
    class AbstractParamDescription : public dynamic_reconfigure::ParamDescription
    {
    public:
      AbstractParamDescription(std::string n, std::string t, uint32_t l,
          std::string d, std::string e)
      {
        name = n;
        type = t;
        level = l;
        description = d;
        edit_method = e;
      }

      virtual void clamp(ConvexHullConfig &config, const ConvexHullConfig &max, const ConvexHullConfig &min) const = 0;
      virtual void calcLevel(uint32_t &level, const ConvexHullConfig &config1, const ConvexHullConfig &config2) const = 0;
      virtual void fromServer(const ros::NodeHandle &nh, ConvexHullConfig &config) const = 0;
      virtual void toServer(const ros::NodeHandle &nh, const ConvexHullConfig &config) const = 0;
      virtual bool fromMessage(const dynamic_reconfigure::Config &msg, ConvexHullConfig &config) const = 0;
      virtual void toMessage(dynamic_reconfigure::Config &msg, const ConvexHullConfig &config) const = 0;
      virtual void getValue(const ConvexHullConfig &config, boost::any &val) const = 0;
    };

    typedef boost::shared_ptr<AbstractParamDescription> AbstractParamDescriptionPtr;
    typedef boost::shared_ptr<const AbstractParamDescription> AbstractParamDescriptionConstPtr;

    template <class T>
    class ParamDescription : public AbstractParamDescription
    {
    public:
      ParamDescription(std::string a_name, std::string a_type, uint32_t a_level,
          std::string a_description, std::string a_edit_method, T ConvexHullConfig::* a_f) :
        AbstractParamDescription(a_name, a_type, a_level, a_description, a_edit_method),
        field(a_f)
      {}

      T (ConvexHullConfig::* field);

      virtual void clamp(ConvexHullConfig &config, const ConvexHullConfig &max, const ConvexHullConfig &min) const
      {
        if (config.*field > max.*field)
          config.*field = max.*field;

        if (config.*field < min.*field)
          config.*field = min.*field;
      }

      virtual void calcLevel(uint32_t &comb_level, const ConvexHullConfig &config1, const ConvexHullConfig &config2) const
      {
        if (config1.*field != config2.*field)
          comb_level |= level;
      }

      virtual void fromServer(const ros::NodeHandle &nh, ConvexHullConfig &config) const
      {
        nh.getParam(name, config.*field);
      }

      virtual void toServer(const ros::NodeHandle &nh, const ConvexHullConfig &config) const
      {
        nh.setParam(name, config.*field);
      }

      virtual bool fromMessage(const dynamic_reconfigure::Config &msg, ConvexHullConfig &config) const
      {
        return dynamic_reconfigure::ConfigTools::getParameter(msg, name, config.*field);
      }

      virtual void toMessage(dynamic_reconfigure::Config &msg, const ConvexHullConfig &config) const
      {
        dynamic_reconfigure::ConfigTools::appendParameter(msg, name, config.*field);
      }

      virtual void getValue(const ConvexHullConfig &config, boost::any &val) const
      {
        val = config.*field;
      }
    };

    class AbstractGroupDescription : public dynamic_reconfigure::Group
    {
      public:
      AbstractGroupDescription(std::string n, std::string t, int p, int i, bool s)
      {
        name = n;
        type = t;
        parent = p;
        state = s;
        id = i;
      }

      std::vector<AbstractParamDescriptionConstPtr> abstract_parameters;
      bool state;

      virtual void toMessage(dynamic_reconfigure::Config &msg, const boost::any &config) const = 0;
      virtual bool fromMessage(const dynamic_reconfigure::Config &msg, boost::any &config) const =0;
      virtual void updateParams(boost::any &cfg, ConvexHullConfig &top) const= 0;
      virtual void setInitialState(boost::any &cfg) const = 0;


      void convertParams()
      {
        for(std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = abstract_parameters.begin(); i != abstract_parameters.end(); ++i)
        {
          parameters.push_back(dynamic_reconfigure::ParamDescription(**i));
        }
      }
    };

    typedef boost::shared_ptr<AbstractGroupDescription> AbstractGroupDescriptionPtr;
    typedef boost::shared_ptr<const AbstractGroupDescription> AbstractGroupDescriptionConstPtr;

    template<class T, class PT>
    class GroupDescription : public AbstractGroupDescription
    {
    public:
      GroupDescription(std::string a_name, std::string a_type, int a_parent, int a_id, bool a_s, T PT::* a_f) : AbstractGroupDescription(a_name, a_type, a_parent, a_id, a_s), field(a_f)
      {
      }

      GroupDescription(const GroupDescription<T, PT>& g): AbstractGroupDescription(g.name, g.type, g.parent, g.id, g.state), field(g.field), groups(g.groups)
      {
        parameters = g.parameters;
        abstract_parameters = g.abstract_parameters;
      }

      virtual bool fromMessage(const dynamic_reconfigure::Config &msg, boost::any &cfg) const
      {
        PT* config = boost::any_cast<PT*>(cfg);
        if(!dynamic_reconfigure::ConfigTools::getGroupState(msg, name, (*config).*field))
          return false;

        for(std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = groups.begin(); i != groups.end(); ++i)
        {
          boost::any n = &((*config).*field);
          if(!(*i)->fromMessage(msg, n))
            return false;
        }

        return true;
      }

      virtual void setInitialState(boost::any &cfg) const
      {
        PT* config = boost::any_cast<PT*>(cfg);
        T* group = &((*config).*field);
        group->state = state;

        for(std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = groups.begin(); i != groups.end(); ++i)
        {
          boost::any n = boost::any(&((*config).*field));
          (*i)->setInitialState(n);
        }

      }

      virtual void updateParams(boost::any &cfg, ConvexHullConfig &top) const
      {
        PT* config = boost::any_cast<PT*>(cfg);

        T* f = &((*config).*field);
        f->setParams(top, abstract_parameters);

        for(std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = groups.begin(); i != groups.end(); ++i)
        {
          boost::any n = &((*config).*field);
          (*i)->updateParams(n, top);
        }
      }

      virtual void toMessage(dynamic_reconfigure::Config &msg, const boost::any &cfg) const
      {
        const PT config = boost::any_cast<PT>(cfg);
        dynamic_reconfigure::ConfigTools::appendGroup<T>(msg, name, id, parent, config.*field);

        for(std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = groups.begin(); i != groups.end(); ++i)
        {
          (*i)->toMessage(msg, config.*field);
        }
      }

      T (PT::* field);
      std::vector<ConvexHullConfig::AbstractGroupDescriptionConstPtr> groups;
    };

class DEFAULT
{
  public:
    DEFAULT()
    {
      state = true;
      name = "Default";
    }

    void setParams(ConvexHullConfig &config, const std::vector<AbstractParamDescriptionConstPtr> params)
    {
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator _i = params.begin(); _i != params.end(); ++_i)
      {
        boost::any val;
        (*_i)->getValue(config, val);

        if("use_camera_info"==(*_i)->name){use_camera_info = boost::any_cast<bool>(val);}
        if("threshold"==(*_i)->name){threshold = boost::any_cast<int>(val);}
      }
    }

    bool use_camera_info;
int threshold;

    bool state;
    std::string name;

    
}groups;



//#line 292 "/home/dlab/ros_catkin_ws/src/dynamic_reconfigure/src/dynamic_reconfigure/parameter_generator_catkin.py"
      bool use_camera_info;
//#line 292 "/home/dlab/ros_catkin_ws/src/dynamic_reconfigure/src/dynamic_reconfigure/parameter_generator_catkin.py"
      int threshold;
//#line 218 "/home/dlab/ros_catkin_ws/src/dynamic_reconfigure/templates/ConfigType.h.template"

    bool __fromMessage__(dynamic_reconfigure::Config &msg)
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      const std::vector<AbstractGroupDescriptionConstPtr> &__group_descriptions__ = __getGroupDescriptions__();

      int count = 0;
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        if ((*i)->fromMessage(msg, *this))
          count++;

      for (std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = __group_descriptions__.begin(); i != __group_descriptions__.end(); i ++)
      {
        if ((*i)->id == 0)
        {
          boost::any n = boost::any(this);
          (*i)->updateParams(n, *this);
          (*i)->fromMessage(msg, n);
        }
      }

      if (count != dynamic_reconfigure::ConfigTools::size(msg))
      {
        ROS_ERROR("ConvexHullConfig::__fromMessage__ called with an unexpected parameter.");
        ROS_ERROR("Booleans:");
        for (unsigned int i = 0; i < msg.bools.size(); i++)
          ROS_ERROR("  %s", msg.bools[i].name.c_str());
        ROS_ERROR("Integers:");
        for (unsigned int i = 0; i < msg.ints.size(); i++)
          ROS_ERROR("  %s", msg.ints[i].name.c_str());
        ROS_ERROR("Doubles:");
        for (unsigned int i = 0; i < msg.doubles.size(); i++)
          ROS_ERROR("  %s", msg.doubles[i].name.c_str());
        ROS_ERROR("Strings:");
        for (unsigned int i = 0; i < msg.strs.size(); i++)
          ROS_ERROR("  %s", msg.strs[i].name.c_str());
        // @todo Check that there are no duplicates. Make this error more
        // explicit.
        return false;
      }
      return true;
    }

    // This version of __toMessage__ is used during initialization of
    // statics when __getParamDescriptions__ can't be called yet.
    void __toMessage__(dynamic_reconfigure::Config &msg, const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__, const std::vector<AbstractGroupDescriptionConstPtr> &__group_descriptions__) const
    {
      dynamic_reconfigure::ConfigTools::clear(msg);
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->toMessage(msg, *this);

      for (std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = __group_descriptions__.begin(); i != __group_descriptions__.end(); ++i)
      {
        if((*i)->id == 0)
        {
          (*i)->toMessage(msg, *this);
        }
      }
    }

    void __toMessage__(dynamic_reconfigure::Config &msg) const
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      const std::vector<AbstractGroupDescriptionConstPtr> &__group_descriptions__ = __getGroupDescriptions__();
      __toMessage__(msg, __param_descriptions__, __group_descriptions__);
    }

    void __toServer__(const ros::NodeHandle &nh) const
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->toServer(nh, *this);
    }

    void __fromServer__(const ros::NodeHandle &nh)
    {
      static bool setup=false;

      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->fromServer(nh, *this);

      const std::vector<AbstractGroupDescriptionConstPtr> &__group_descriptions__ = __getGroupDescriptions__();
      for (std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = __group_descriptions__.begin(); i != __group_descriptions__.end(); i++){
        if (!setup && (*i)->id == 0) {
          setup = true;
          boost::any n = boost::any(this);
          (*i)->setInitialState(n);
        }
      }
    }

    void __clamp__()
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      const ConvexHullConfig &__max__ = __getMax__();
      const ConvexHullConfig &__min__ = __getMin__();
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->clamp(*this, __max__, __min__);
    }

    uint32_t __level__(const ConvexHullConfig &config) const
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      uint32_t level = 0;
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->calcLevel(level, config, *this);
      return level;
    }

    static const dynamic_reconfigure::ConfigDescription &__getDescriptionMessage__();
    static const ConvexHullConfig &__getDefault__();
    static const ConvexHullConfig &__getMax__();
    static const ConvexHullConfig &__getMin__();
    static const std::vector<AbstractParamDescriptionConstPtr> &__getParamDescriptions__();
    static const std::vector<AbstractGroupDescriptionConstPtr> &__getGroupDescriptions__();

  private:
    static const ConvexHullConfigStatics *__get_statics__();
  };

  template <> // Max and min are ignored for strings.
  inline void ConvexHullConfig::ParamDescription<std::string>::clamp(ConvexHullConfig &config, const ConvexHullConfig &max, const ConvexHullConfig &min) const
  {
    (void) config;
    (void) min;
    (void) max;
    return;
  }

  class ConvexHullConfigStatics
  {
    friend class ConvexHullConfig;

    ConvexHullConfigStatics()
    {
ConvexHullConfig::GroupDescription<ConvexHullConfig::DEFAULT, ConvexHullConfig> Default("Default", "", 0, 0, true, &ConvexHullConfig::groups);
//#line 292 "/home/dlab/ros_catkin_ws/src/dynamic_reconfigure/src/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.use_camera_info = 0;
//#line 292 "/home/dlab/ros_catkin_ws/src/dynamic_reconfigure/src/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.use_camera_info = 1;
//#line 292 "/home/dlab/ros_catkin_ws/src/dynamic_reconfigure/src/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.use_camera_info = 0;
//#line 292 "/home/dlab/ros_catkin_ws/src/dynamic_reconfigure/src/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(ConvexHullConfig::AbstractParamDescriptionConstPtr(new ConvexHullConfig::ParamDescription<bool>("use_camera_info", "bool", 0, "Indicates that the camera_info topic should be subscribed to to get the default input_frame_id. Otherwise the frame from the image message will be used.", "", &ConvexHullConfig::use_camera_info)));
//#line 292 "/home/dlab/ros_catkin_ws/src/dynamic_reconfigure/src/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(ConvexHullConfig::AbstractParamDescriptionConstPtr(new ConvexHullConfig::ParamDescription<bool>("use_camera_info", "bool", 0, "Indicates that the camera_info topic should be subscribed to to get the default input_frame_id. Otherwise the frame from the image message will be used.", "", &ConvexHullConfig::use_camera_info)));
//#line 292 "/home/dlab/ros_catkin_ws/src/dynamic_reconfigure/src/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.threshold = 1;
//#line 292 "/home/dlab/ros_catkin_ws/src/dynamic_reconfigure/src/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.threshold = 255;
//#line 292 "/home/dlab/ros_catkin_ws/src/dynamic_reconfigure/src/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.threshold = 100;
//#line 292 "/home/dlab/ros_catkin_ws/src/dynamic_reconfigure/src/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(ConvexHullConfig::AbstractParamDescriptionConstPtr(new ConvexHullConfig::ParamDescription<int>("threshold", "int", 0, "Detect edges using Threshold", "", &ConvexHullConfig::threshold)));
//#line 292 "/home/dlab/ros_catkin_ws/src/dynamic_reconfigure/src/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(ConvexHullConfig::AbstractParamDescriptionConstPtr(new ConvexHullConfig::ParamDescription<int>("threshold", "int", 0, "Detect edges using Threshold", "", &ConvexHullConfig::threshold)));
//#line 245 "/home/dlab/ros_catkin_ws/src/dynamic_reconfigure/src/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.convertParams();
//#line 245 "/home/dlab/ros_catkin_ws/src/dynamic_reconfigure/src/dynamic_reconfigure/parameter_generator_catkin.py"
      __group_descriptions__.push_back(ConvexHullConfig::AbstractGroupDescriptionConstPtr(new ConvexHullConfig::GroupDescription<ConvexHullConfig::DEFAULT, ConvexHullConfig>(Default)));
//#line 356 "/home/dlab/ros_catkin_ws/src/dynamic_reconfigure/templates/ConfigType.h.template"

      for (std::vector<ConvexHullConfig::AbstractGroupDescriptionConstPtr>::const_iterator i = __group_descriptions__.begin(); i != __group_descriptions__.end(); ++i)
      {
        __description_message__.groups.push_back(**i);
      }
      __max__.__toMessage__(__description_message__.max, __param_descriptions__, __group_descriptions__);
      __min__.__toMessage__(__description_message__.min, __param_descriptions__, __group_descriptions__);
      __default__.__toMessage__(__description_message__.dflt, __param_descriptions__, __group_descriptions__);
    }
    std::vector<ConvexHullConfig::AbstractParamDescriptionConstPtr> __param_descriptions__;
    std::vector<ConvexHullConfig::AbstractGroupDescriptionConstPtr> __group_descriptions__;
    ConvexHullConfig __max__;
    ConvexHullConfig __min__;
    ConvexHullConfig __default__;
    dynamic_reconfigure::ConfigDescription __description_message__;

    static const ConvexHullConfigStatics *get_instance()
    {
      // Split this off in a separate function because I know that
      // instance will get initialized the first time get_instance is
      // called, and I am guaranteeing that get_instance gets called at
      // most once.
      static ConvexHullConfigStatics instance;
      return &instance;
    }
  };

  inline const dynamic_reconfigure::ConfigDescription &ConvexHullConfig::__getDescriptionMessage__()
  {
    return __get_statics__()->__description_message__;
  }

  inline const ConvexHullConfig &ConvexHullConfig::__getDefault__()
  {
    return __get_statics__()->__default__;
  }

  inline const ConvexHullConfig &ConvexHullConfig::__getMax__()
  {
    return __get_statics__()->__max__;
  }

  inline const ConvexHullConfig &ConvexHullConfig::__getMin__()
  {
    return __get_statics__()->__min__;
  }

  inline const std::vector<ConvexHullConfig::AbstractParamDescriptionConstPtr> &ConvexHullConfig::__getParamDescriptions__()
  {
    return __get_statics__()->__param_descriptions__;
  }

  inline const std::vector<ConvexHullConfig::AbstractGroupDescriptionConstPtr> &ConvexHullConfig::__getGroupDescriptions__()
  {
    return __get_statics__()->__group_descriptions__;
  }

  inline const ConvexHullConfigStatics *ConvexHullConfig::__get_statics__()
  {
    const static ConvexHullConfigStatics *statics;

    if (statics) // Common case
      return statics;

    boost::mutex::scoped_lock lock(dynamic_reconfigure::__init_mutex__);

    if (statics) // In case we lost a race.
      return statics;

    statics = ConvexHullConfigStatics::get_instance();

    return statics;
  }


}

#endif // __CONVEXHULLRECONFIGURATOR_H__
